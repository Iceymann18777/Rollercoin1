.class final Lcom/google/android/gms/common/api/internal/zam;
.super Lcom/google/android/gms/common/api/internal/zabk;
.source "com.google.android.gms:play-services-base@@17.3.0"


# instance fields
.field private final synthetic zaa:Landroid/app/Dialog;

.field private final synthetic zab:Lcom/google/android/gms/common/api/internal/zan;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zan;Landroid/app/Dialog;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zam;->zab:Lcom/google/android/gms/common/api/internal/zan;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zam;->zaa:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabk;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zam;->zab:Lcom/google/android/gms/common/api/internal/zan;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zan;->zaa:Lcom/google/android/gms/common/api/internal/zal;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zal;->zab()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zam;->zaa:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zam;->zaa:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_14
    return-void
.end method
