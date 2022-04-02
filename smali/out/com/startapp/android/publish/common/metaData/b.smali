.class public Lcom/startapp/android/publish/common/metaData/b;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private discoveryIntervalInMinutes:I

.field private enabled:Z

.field private timeoutInSec:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 9
    iput v0, p0, Lcom/startapp/android/publish/common/metaData/b;->timeoutInSec:I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/b;->enabled:Z

    const/16 v0, 0x5a0

    .line 11
    iput v0, p0, Lcom/startapp/android/publish/common/metaData/b;->discoveryIntervalInMinutes:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/startapp/android/publish/common/metaData/b;->timeoutInSec:I

    return v0
.end method

.method public b()Z
    .registers 2

    .line 19
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/b;->enabled:Z

    return v0
.end method

.method public c()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/startapp/android/publish/common/metaData/b;->discoveryIntervalInMinutes:I

    return v0
.end method
