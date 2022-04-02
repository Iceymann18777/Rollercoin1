.class public final Lcom/google/android/gms/common/api/internal/zaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final zaa:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "*>;"
        }
    .end annotation
.end field

.field private final zab:Z

.field private zac:Lcom/google/android/gms/common/api/internal/zap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Api;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaa:Lcom/google/android/gms/common/api/Api;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/common/api/internal/zaq;->zab:Z

    return-void
.end method

.method private final zaa()Lcom/google/android/gms/common/api/internal/zap;
    .registers 3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zac:Lcom/google/android/gms/common/api/internal/zap;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zac:Lcom/google/android/gms/common/api/internal/zap;

    return-object v0
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 3

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zaa()Lcom/google/android/gms/common/api/internal/zap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zap;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zaa()Lcom/google/android/gms/common/api/internal/zap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaa:Lcom/google/android/gms/common/api/Api;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zaq;->zab:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/zap;->zaa(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 3

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zaa()Lcom/google/android/gms/common/api/internal/zap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zap;->onConnectionSuspended(I)V

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/api/internal/zap;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zac:Lcom/google/android/gms/common/api/internal/zap;

    return-void
.end method
