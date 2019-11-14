using System;
using System.Collections.Generic;
using System.Text;

namespace ObjProg_Dag1_JagtPåObjekter
{
    class Sofa
    {
        public bool hasLegs;
        public bool hasSeatBack;
        public bool isAPartOfASet;
        public string material;
        public string color;

        public string Sitting()
        {
            return $"A nice {material} sofa you can sit on.";
        }

        public string Laying()
        {
            return $"A {color} sofa! Perfect to lay on.";
        }

        public string WatchNetflix()
        {
            return $"{hasSeatBack}! The sofa has a seat back, makes it perfect to watch Netflix on.";
        }

        public string Hat()
        {
            return $"Is this sofa a part of a set? {isAPartOfASet}. I want to have this sofa as a hat!";
        }
        
        public string Burning()
        {
            return "Why won't this sofa burn? Is it because of the legs?! {hasLegs}";
        }
    }
}
