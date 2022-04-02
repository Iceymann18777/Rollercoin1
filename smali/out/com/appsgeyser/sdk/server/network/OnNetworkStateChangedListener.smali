.class public abstract Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;
.super Ljava/lang/Object;
.source "OnNetworkStateChangedListener.java"


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 28
    :cond_11
    check-cast p1, Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

    .line 30
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract networkIsDown()V
.end method

.method public abstract networkIsUp()V
.end method
