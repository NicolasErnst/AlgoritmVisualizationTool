﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GraphAlgorithmPlugin;

namespace StrongConnectedComponentsPlugin
{
    public class SCCPlugin : GraphAlgorithmPlugin<SCCVertex, Edge<SCCVertex>>
    {
        public override string AlgorithmName => "Strong Connected Components";

        public override GraphDirectionType CompatibleGraphDirections => GraphDirectionType.Directed;

        protected override async Task RunAlgorithm(SCCVertex startVertex)
        {
            try
            {
                Stack<SCCVertex> l = new Stack<SCCVertex>();
                int u = 0;

                u = await RunDFS(startVertex, u, l);
                foreach(SCCVertex s in Graph.Vertices)
                {
                    if (!s.Marked)
                    {
                        u = await RunDFS(s, u, l);
                    }
                }

                List<Edge<SCCVertex>> edges = new List<Edge<SCCVertex>>(Graph.Edges);
                await MakeAlgorithmStep(() =>
                {
                    foreach (SCCVertex s in Graph.Vertices)
                    {
                        s.Coordinates = GraphLayout.GetPosition(s);
                        s.Marked = false;
                        s.PopTime = 0;
                        s.PushTime = 0;
                    }
                    foreach (SCCVertex s in Graph.Vertices)
                    {
                        Graph.ClearEdges(s);
                    }
                    GraphLayout.LayoutUpdated += GraphLayout_LayoutUpdated;
                    Graph.AddEdgeRange(edges.Select(x => new Edge<SCCVertex>(x.Target, x.Source)));
                }, () =>
                {
                    foreach (SCCVertex s in Graph.Vertices)
                    {
                        Graph.ClearEdges(s);
                    }
                    Graph.AddEdgeRange(edges);
                });

                int sccID = 1;
                while (l.Count > 0)
                {
                    SCCVertex s = l.Pop();
                    if (!s.Marked)
                    {
                        await IdentifySCCs(s, sccID);
                        sccID += 1;
                    }
                }
            }
            catch (TaskCanceledException) { }
            catch (OperationCanceledException) { }
        }

        private void GraphLayout_LayoutUpdated(object sender, EventArgs e)
        {
            foreach (SCCVertex s in Graph.Vertices)
            {
                GraphLayout.UpdatePosition(s, s.Coordinates);
            }
            // TODO: remove after positions set
        }

        private void GetDescendants(SCCVertex vertex, Dictionary<SCCVertex, HashSet<SCCVertex>> descendants)
        {
            if (!descendants.ContainsKey(vertex))
            {
                descendants.Add(vertex, new HashSet<SCCVertex>());
            }
            foreach (SCCVertex descendantVertex in Graph.OutEdges(vertex).Select(x => x.Target))
            {
                descendants[vertex].Add(descendantVertex);
            }
        }

        private async Task<int> RunDFS(SCCVertex startVertex, int u, Stack<SCCVertex> l) 
        {
            Stack<SCCVertex> q = new Stack<SCCVertex>();
            Dictionary<SCCVertex, HashSet<SCCVertex>> descendantVertices = new Dictionary<SCCVertex, HashSet<SCCVertex>>();
            u += 1;

            await MakeAlgorithmStep(() =>
            {
                q.Push(startVertex);
                startVertex.Marked = true;
                GetDescendants(startVertex, descendantVertices);
                startVertex.PushTime = u;
            }, () =>
            {
                q.Pop();
                startVertex.Marked = false;
                descendantVertices.Remove(startVertex);
                startVertex.PushTime = 0;
            });

            while (q.Count > 0)
            {
                SCCVertex v = q.Peek();
                if (descendantVertices.ContainsKey(v) && descendantVertices[v].Count > 0)
                {
                    SCCVertex w = descendantVertices[v].First();
                    descendantVertices[v].Remove(w);
                    if (!w.Marked)
                    {
                        await MakeAlgorithmStep(() =>
                        {
                            q.Push(w);
                            w.Marked = true;
                            GetDescendants(w, descendantVertices);
                            u += 1;
                            w.PushTime = u;
                        }, () =>
                        {
                            q.Pop();
                            w.Marked = false;
                            descendantVertices.Remove(w);
                            u -= 1;
                            w.PushTime = 0;
                        });
                    }
                }
                else
                {
                    await MakeAlgorithmStep(() =>
                    {
                        q.Pop();
                        l.Push(v);
                        u += 1;
                        v.PopTime = u;
                    }, () =>
                    {
                        q.Push(v);
                        l.Pop();
                        u -= 1;
                        v.PopTime = 0;
                    });
                }
            }

            return u;
        }

        private async Task IdentifySCCs(SCCVertex startVertex, int sccID)
        {
            Stack<SCCVertex> q = new Stack<SCCVertex>();
            Dictionary<SCCVertex, HashSet<SCCVertex>> descendantVertices = new Dictionary<SCCVertex, HashSet<SCCVertex>>();
            await MakeAlgorithmStep(() =>
            {
                q.Push(startVertex);
                startVertex.Marked = true;
                GetDescendants(startVertex, descendantVertices);
                startVertex.SccID = sccID;
            }, () =>
            {
                q.Pop();
                startVertex.Marked = false;
                descendantVertices.Remove(startVertex);
                startVertex.SccID = 0;
            });

            while (q.Count > 0)
            {
                SCCVertex v = q.Peek();
                if (descendantVertices.ContainsKey(v) && descendantVertices[v].Count > 0)
                {
                    SCCVertex w = descendantVertices[v].First();
                    descendantVertices[v].Remove(w);
                    if (!w.Marked)
                    {
                        await MakeAlgorithmStep(() =>
                        {
                            q.Push(w);
                            w.Marked = true;
                            GetDescendants(w, descendantVertices);
                            w.SccID = sccID;
                        }, () =>
                        {
                            q.Pop();
                            w.Marked = false;
                            descendantVertices.Remove(w);
                            w.SccID = 0;
                        });
                    }
                }
                else
                {
                    q.Pop();
                }
            }
        }




































            //private async Task IdentifyStrongConnectedComponents(SCCVertex startVertex, int sccCounter)
            //{
            //    Stack<SCCVertex> q = new Stack<SCCVertex>();
            //    Dictionary<SCCVertex, List<SCCVertex>> descendantNodes = new Dictionary<SCCVertex, List<SCCVertex>>();

            //    await MakeAlgorithmStep(() =>
            //    {
            //        startVertex.SccID = sccCounter;
            //        q.Push(startVertex);
            //        startVertex.Marked = true;
            //        GetDescendantNodes(startVertex, descendantNodes);
            //    }, () =>
            //    {
            //        startVertex.SccID = 0; 
            //        q.Pop();
            //        startVertex.Marked = false;
            //        if (descendantNodes.ContainsKey(startVertex))
            //        {
            //            descendantNodes.Remove(startVertex);
            //        }
            //    });

            //    while (q.Count > 0)
            //    {
            //        SCCVertex v = q.Peek();
            //        if (descendantNodes.ContainsKey(v) && descendantNodes[v].Count > 0)
            //        {
            //            SCCVertex w = descendantNodes[v].First();
            //            bool wMarkedState = w.Marked;

            //            await MakeAlgorithmStep(() =>
            //            {
            //                descendantNodes[v].Remove(w);
            //                if (!wMarkedState)
            //                {
            //                    q.Push(w);
            //                    w.Marked = true;
            //                    GetDescendantNodes(w, descendantNodes);
            //                    w.SccID = sccCounter;
            //                }
            //            }, () =>
            //            {
            //                if (!descendantNodes[v].Contains(w))
            //                {
            //                    descendantNodes[v].Add(w);
            //                }
            //                if (!wMarkedState)
            //                {
            //                    q.Pop();
            //                    w.Marked = false;
            //                    if (descendantNodes.ContainsKey(w))
            //                    {
            //                        descendantNodes.Remove(w);
            //                    }
            //                    w.SccID = 0;
            //                }
            //            });
            //        }
            //        else
            //        {
            //            await MakeAlgorithmStep(() =>
            //            {
            //                q.Pop();
            //            }, () =>
            //            {
            //                q.Push(v);
            //            });
            //        }
            //    }
            //}

            //private async Task<int> RunDFS(SCCVertex startVertex, Stack<SCCVertex> l, int u)
            //{
            //    Stack<SCCVertex> q = new Stack<SCCVertex>();
            //    Dictionary<SCCVertex, List<SCCVertex>> descendantNodes = new Dictionary<SCCVertex, List<SCCVertex>>();
            //    u += 1;

            //    await MakeAlgorithmStep(() =>
            //    {
            //        startVertex.PushTime = u;
            //        q.Push(startVertex);
            //        startVertex.Marked = true;
            //        GetDescendantNodes(startVertex, descendantNodes);
            //        //Progress = (u / (Graph.VertexCount * 2.0)) * 100.0; ;
            //        //ProgressText = "Executing...";
            //    }, () =>
            //    {
            //        startVertex.PushTime = 0;
            //        q.Pop();
            //        startVertex.Marked = false;
            //        if (descendantNodes.ContainsKey(startVertex))
            //        {
            //            descendantNodes.Remove(startVertex);
            //        }
            //        //Progress = 0;
            //        //ProgressText = "Initializing";
            //    });

            //    while (q.Count > 0)
            //    {
            //        SCCVertex v = q.Peek();
            //        if (descendantNodes.ContainsKey(v) && descendantNodes[v].Count > 0)
            //        {
            //            SCCVertex w = descendantNodes[v].First();
            //            bool wMarkedState = w.Marked;

            //            await MakeAlgorithmStep(() =>
            //            {
            //                descendantNodes[v].Remove(w);
            //                if (!wMarkedState)
            //                {
            //                    q.Push(w);
            //                    w.Marked = true;
            //                    GetDescendantNodes(w, descendantNodes);
            //                    u += 1;
            //                    w.PushTime = u;
            //                    //Progress = (u / (Graph.VertexCount * 2.0)) * 100.0; ;
            //                }
            //            }, () =>
            //            {
            //                if (!descendantNodes[v].Contains(w))
            //                {
            //                    descendantNodes[v].Add(w);
            //                }
            //                if (!wMarkedState)
            //                {
            //                    q.Pop();
            //                    w.Marked = false;
            //                    if (descendantNodes.ContainsKey(w))
            //                    {
            //                        descendantNodes.Remove(w);
            //                    }
            //                    u -= 1;
            //                    w.PushTime = 0;
            //                    //Progress = (u / (Graph.VertexCount * 2.0)) * 100.0; ;
            //                }
            //            });
            //        }
            //        else
            //        {
            //            await MakeAlgorithmStep(() =>
            //            {
            //                q.Pop();
            //                l.Push(v);
            //                u += 1;
            //                v.PopTime = u;
            //                //Progress = (u / (Graph.VertexCount * 2.0)) * 100.0;
            //            }, () =>
            //            {
            //                q.Push(v);
            //                l.Pop();
            //                u -= 1;
            //                v.PopTime = 0;
            //                //Progress = (u / (Graph.VertexCount * 2.0)) * 100.0;
            //            });
            //        }
            //    }

            //    return u; 

            //    //Progress = 100;
            //    //ProgressText = "Finished!";
            //}

            //private void GetDescendantNodes(SCCVertex vertex, Dictionary<SCCVertex, List<SCCVertex>> descendantNodes)
            //{
            //    if (!descendantNodes.ContainsKey(vertex))
            //    {
            //        descendantNodes.Add(vertex, new List<SCCVertex>());
            //    }
            //    descendantNodes[vertex].AddRange(Graph.OutEdges(vertex).Select(x => x.Target));
            //}

            // DFS Code without Progress :
            //        Stack<DFSVertex> q = new Stack<DFSVertex>();
            //        Dictionary<DFSVertex, HashSet<DFSVertex>> descendantVertices = new Dictionary<DFSVertex, HashSet<DFSVertex>>();
            //        int u = 1;

            //        await MakeAlgorithmStep(() =>
            //                {
            //            q.Push(startVertex);
            //            startVertex.Marked = true;
            //            GetDescendants(startVertex, descendantVertices);
            //            startVertex.PushTime = u;
            //        }, () =>
            //                {
            //                    q.Pop();
            //                    startVertex.Marked = false; 
            //                    if (descendantVertices.ContainsKey(startVertex))
            //                    {
            //                        descendantVertices.Remove(startVertex);
            //                    }
            //    startVertex.PushTime = 0; 
            //                });

            //while (q.Count > 0)
            //{
            //    DFSVertex v = q.Peek();
            //    if (descendantVertices.ContainsKey(v) && descendantVertices[v].Count > 0)
            //    {
            //        DFSVertex w = descendantVertices[v].First();
            //        descendantVertices[v].Remove(w);
            //        if (!w.Marked)
            //        {
            //            await MakeAlgorithmStep(() =>
            //            {
            //                q.Push(w);
            //                w.Marked = true;
            //                GetDescendants(w, descendantVertices);
            //                u += 1;
            //                w.PushTime = u;
            //            }, () =>
            //            {
            //                q.Pop();
            //                w.Marked = false;
            //                if (descendantVertices.ContainsKey(w))
            //                {
            //                    descendantVertices.Remove(w);
            //                }
            //                u -= 1;
            //                w.PushTime = 0;
            //            });
            //        }
            //    }
            //    else
            //    {
            //        await MakeAlgorithmStep(() =>
            //        {
            //            q.Pop();
            //            u += 1;
            //            v.PopTime = u;
            //        }, () =>
            //        {
            //            q.Push(v);
            //            u -= 1;
            //            v.PopTime = 0;
            //        });
            //    }
            //}
        }
}
