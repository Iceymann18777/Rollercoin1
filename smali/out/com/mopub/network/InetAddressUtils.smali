.class public Lcom/mopub/network/InetAddressUtils;
.super Ljava/lang/Object;
.source "InetAddressUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInetAddressByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 19
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method
