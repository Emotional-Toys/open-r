//
// Copyright 2002,2003,2006 Sony Corporation 
//
// Permission to use, copy, modify, and redistribute this software for
// non-commercial use is hereby granted.
//
// This software is provided "as is" without warranty of any kind,
// either expressed or implied, including but not limited to the
// implied warranties of fitness for a particular purpose.
//

#ifndef UDPConnection_h_DEFINED
#define UDPConnection_h_DEFINED

#include <ant.h>
#include <IPAddress.h>

namespace UDPConnectionState
{
    enum ConnectionState {
        CONNECTION_CLOSED,
        CONNECTION_CONNECTING,
        CONNECTION_CONNECTED,
        CONNECTION_SENDING,
        CONNECTION_RECEIVING,
        CONNECTION_CLOSING
    };
}

struct UDPConnection {

    antModuleRef     endpoint;
    UDPConnectionState::ConnectionState  state;

    // send buffer
    antSharedBuffer  sendBuffer;
    byte*            sendData;
    int              sendSize;
    IPAddress        sendAddress;
    Port             sendPort;
    // receive buffer
    antSharedBuffer  recvBuffer;
    byte*            recvData;
    int              recvSize;
};

#endif // UDPConnection_h_DEFINED
