using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class NetWorkManager : MonoBehaviour
{
    void Start()
    {
#if unity_server
        
#endif
    }

    /// <summary>
    /// Æô¶¯·þÎñÆ÷
    /// </summary>
    /// <returns></returns>
    public bool StartServer()
    {
        return true;
    }

}
