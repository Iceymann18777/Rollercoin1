.class public Lcom/startapp/android/publish/common/metaData/LocationConfig;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_CO_ENABLED:Z = false

.field private static final DEFAULT_FI_ENABLED:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private coEnabled:Z

.field private fiEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/LocationConfig;->fiEnabled:Z

    .line 15
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/LocationConfig;->coEnabled:Z

    return-void
.end method


# virtual methods
.method public isCoEnabled()Z
    .registers 2

    .line 22
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/LocationConfig;->coEnabled:Z

    return v0
.end method

.method public isFiEnabled()Z
    .registers 2

    .line 18
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/LocationConfig;->fiEnabled:Z

    return v0
.end method
