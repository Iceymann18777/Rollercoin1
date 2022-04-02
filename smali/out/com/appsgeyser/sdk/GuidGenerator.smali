.class public Lcom/appsgeyser/sdk/GuidGenerator;
.super Ljava/lang/Object;
.source "GuidGenerator.java"


# direct methods
.method public static generateNewGuid()Ljava/lang/String;
    .registers 1

    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
