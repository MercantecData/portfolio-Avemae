using System;
using System.Collections.Generic;
using System.Text;

namespace ObjProg_Dag1_JagtPåObjekter
{
    class PaperPlate
    {
        public string material;
        public string color;
        public bool funkyEdges;
        public bool isFlat;
        public bool isFolded;
        

        public string Hat()
        {
            return $"A {material} plate can be every type of hat!";
        }

        public string EatingTheCake()
        {
            return $"The color of the plate can tell you much about what has been eaten. Color of your plate: {color}";
        }

        public string HighSkills()
        {
            return $"Did you just fold your plate? {isFolded}.";
        }

        public string Decoration()
        {
            return $"Can you see the funky edges on this plate? {funkyEdges}";
        }

        public string MyMeal()
        {
            return $"{isFlat}ly, this plate is flat. I won't be able to eat my soup in this!";
        }



    }
}
