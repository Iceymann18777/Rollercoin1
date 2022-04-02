.class public final Lcom/google/android/gms/internal/ads/zzey;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgd;


# instance fields
.field private final mView:Landroid/view/View;

.field private final zzafn:Lcom/google/android/gms/internal/ads/zzajh;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzajh;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzey;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzey;->zzafn:Lcom/google/android/gms/internal/ads/zzajh;

    return-void
.end method


# virtual methods
.method public final zzgh()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzey;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final zzgi()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzey;->zzafn:Lcom/google/android/gms/internal/ads/zzajh;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzey;->mView:Landroid/view/View;

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public final zzgj()Lcom/google/android/gms/internal/ads/zzgd;
    .registers 1

    return-object p0
.end method
