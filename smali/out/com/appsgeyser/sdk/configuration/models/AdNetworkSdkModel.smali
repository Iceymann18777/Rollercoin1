.class public Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;
.super Ljava/lang/Object;
.source "AdNetworkSdkModel.java"


# instance fields
.field private isActive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "active"
    .end annotation
.end field


# virtual methods
.method public isActive()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->isActive:Z

    return v0
.end method
