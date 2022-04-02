.class final Lcom/google/android/gms/internal/ads/zzot;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzox;


# instance fields
.field private final synthetic zzbir:Lcom/google/android/gms/internal/ads/zzos;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzos;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzot;->zzbir:Lcom/google/android/gms/internal/ads/zzos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public final zzki()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzot;->zzbir:Lcom/google/android/gms/internal/ads/zzos;

    const-string v1, "_videoMediaView"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzos;->performClick(Ljava/lang/String;)V

    return-void
.end method
