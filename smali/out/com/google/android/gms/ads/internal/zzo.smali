.class final Lcom/google/android/gms/ads/internal/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic zzwp:Lcom/google/android/gms/ads/internal/zzl;

.field private final synthetic zzwq:Lcom/google/android/gms/ads/internal/zzx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zzx;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zzwp:Lcom/google/android/gms/ads/internal/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzo;->zzwq:Lcom/google/android/gms/ads/internal/zzx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zzwq:Lcom/google/android/gms/ads/internal/zzx;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzx;->recordClick()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zzwp:Lcom/google/android/gms/ads/internal/zzl;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzl;->zzwn:Lcom/google/android/gms/internal/ads/zzait;

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zzwp:Lcom/google/android/gms/ads/internal/zzl;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzl;->zzwn:Lcom/google/android/gms/internal/ads/zzait;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzait;->zzpi()V

    :cond_12
    return-void
.end method
