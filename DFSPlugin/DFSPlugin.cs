﻿using GraphAlgorithmPlugin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DFSPlugin
{
    public class DFSPlugin : GraphAlgorithmPlugin<DFSVertex, Edge<DFSVertex>>
    {
        public override async void RunAlgorithm()
        {
            try
            {
                for (int i = 0; i < 100; i++)
                {
                    await MakeAlgorithmStep(() =>
                    {
                        Vertex first = Graph.Vertices.FirstOrDefault();
                        if (first != null)
                        {
                            //if (i == 0)
                            //{
                            //    first.VertexContent = "1"; 
                            //}
                            //else
                            //{
                            //    first.VertexContent = (int.Parse(first.VertexContent) + 1).ToString();
                            //}
                            first.VertexContent = (i + 1).ToString();
                        }
                    }, () =>
                    {
                        Vertex first = Graph.Vertices.FirstOrDefault();
                        if (first != null)
                        {
                            first.VertexContent = (int.Parse(first.VertexContent) - 1).ToString();
                        }
                    });
                }
            } 
            catch (TaskCanceledException) { }
            catch (OperationCanceledException) { }
        }
    }
}
