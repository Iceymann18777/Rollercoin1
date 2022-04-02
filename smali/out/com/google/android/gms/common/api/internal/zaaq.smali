.class final Lcom/google/android/gms/common/api/internal/zaaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/zai;


# instance fields
.field private final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaq;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConnectionHint()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isConnected()Z
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaq;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    return v0
.end method
