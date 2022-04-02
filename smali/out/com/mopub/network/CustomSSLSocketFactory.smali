.class public Lcom/mopub/network/CustomSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "CustomSSLSocketFactory.java"


# instance fields
.field private mCertificateSocketFactory:Landroid/net/SSLCertificateSocketFactory;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    return-void
.end method

.method private doManualServerNameIdentification(Ljava/net/Socket;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Landroid/net/SSLCertificateSocketFactory;

    if-eqz v0, :cond_14

    .line 164
    instance-of v1, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_13

    .line 165
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 166
    invoke-virtual {v0, p1, p2}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 167
    invoke-static {p1, p2}, Lcom/mopub/network/CustomSSLSocketFactory;->verifyServerName(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    :cond_13
    return-void

    .line 161
    :cond_14
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private enableTlsIfAvailable(Ljava/net/Socket;)V
    .registers 3

    .line 187
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_d

    .line 188
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 189
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public static getDefault(I)Lcom/mopub/network/CustomSSLSocketFactory;
    .registers 3

    .line 39
    new-instance v0, Lcom/mopub/network/CustomSSLSocketFactory;

    invoke-direct {v0}, Lcom/mopub/network/CustomSSLSocketFactory;-><init>()V

    const/4 v1, 0x0

    .line 41
    invoke-static {p0, v1}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    check-cast p0, Landroid/net/SSLCertificateSocketFactory;

    iput-object p0, v0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Landroid/net/SSLCertificateSocketFactory;

    return-object v0
.end method

.method static verifyServerName(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 180
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    if-eqz p0, :cond_15

    return-void

    .line 182
    :cond_15
    new-instance p0, Ljavax/net/ssl/SSLHandshakeException;

    const-string p1, "Server Name Identification failed."

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Landroid/net/SSLCertificateSocketFactory;

    if-eqz v0, :cond_c

    .line 54
    invoke-virtual {v0}, Landroid/net/SSLCertificateSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    return-object v0

    .line 52
    :cond_c
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Landroid/net/SSLCertificateSocketFactory;

    if-eqz v0, :cond_c

    .line 64
    invoke-virtual {v0, p1, p2}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    return-object p1

    .line 62
    :cond_c
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Landroid/net/SSLCertificateSocketFactory;

    if-eqz v0, :cond_c

    .line 74
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    return-object p1

    .line 72
    :cond_c
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Landroid/net/SSLCertificateSocketFactory;

    if-eqz v0, :cond_c

    .line 84
    invoke-virtual {v0, p1, p2}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 85
    invoke-direct {p0, p1}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    return-object p1

    .line 82
    :cond_c
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Landroid/net/SSLCertificateSocketFactory;

    if-eqz v0, :cond_c

    .line 94
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 95
    invoke-direct {p0, p1}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    return-object p1

    .line 92
    :cond_c
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Landroid/net/SSLCertificateSocketFactory;

    if-eqz v0, :cond_2c

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_22

    if-eqz p4, :cond_11

    if-eqz p1, :cond_11

    .line 129
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 132
    :cond_11
    iget-object p1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Landroid/net/SSLCertificateSocketFactory;

    .line 133
    invoke-static {p2}, Lcom/mopub/network/InetAddressUtils;->getInetAddressByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p4

    .line 132
    invoke-virtual {p1, p4, p3}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 134
    invoke-direct {p0, p1}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/mopub/network/CustomSSLSocketFactory;->doManualServerNameIdentification(Ljava/net/Socket;Ljava/lang/String;)V

    return-object p1

    .line 139
    :cond_22
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Landroid/net/SSLCertificateSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    return-object p1

    .line 120
    :cond_2c
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Landroid/net/SSLCertificateSocketFactory;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 106
    :cond_8
    invoke-virtual {v0}, Landroid/net/SSLCertificateSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Landroid/net/SSLCertificateSocketFactory;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 114
    :cond_8
    invoke-virtual {v0}, Landroid/net/SSLCertificateSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setCertificateSocketFactory(Landroid/net/SSLCertificateSocketFactory;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Landroid/net/SSLCertificateSocketFactory;

    return-void
.end method
