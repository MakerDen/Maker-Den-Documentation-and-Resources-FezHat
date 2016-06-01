﻿using Newtonsoft.Json;
using System.Text;

namespace VividChallenge
{
    public class Colour
    {
        public int MsgId { get; set; }
        public int[] LightId { get; set; }
        public byte Red { get; set; } = 0;
        public byte Green { get; set; } = 0;
        public byte Blue { get; set; } = 0;
        public byte White { get; set; } = 0;
        public byte Ctrl { get; set; } = 0;

        public byte[] ToJson() {
            MsgId++;
            return Encoding.UTF8.GetBytes(JsonConvert.SerializeObject(this));
        }
    }
}
