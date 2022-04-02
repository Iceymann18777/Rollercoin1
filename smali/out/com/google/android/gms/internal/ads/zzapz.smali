.class public final Lcom/google/android/gms/internal/ads/zzapz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private zzcxs:Z

.field private final zzdaq:Lcom/google/android/gms/internal/ads/zzaqa;

.field private zzdar:Z

.field private zzdas:Z

.field private zzdat:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaqa;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdat:F

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapz;->mAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdaq:Lcom/google/android/gms/internal/ads/zzaqa;

    return-void
.end method

.method private final zztw()V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzcxs:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdas:Z

    if-nez v0, :cond_13

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdat:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_32

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdar:Z

    if-nez v3, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapz;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2c

    if-eqz v3, :cond_21

    goto :goto_2c

    :cond_21
    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, p0, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v2, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdar:Z

    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdaq:Lcom/google/android/gms/internal/ads/zzaqa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqa;->zzst()V

    return-void

    :cond_32
    if-nez v0, :cond_4d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdar:Z

    if-eqz v0, :cond_4d

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzapz;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_48

    if-nez v0, :cond_3f

    goto :goto_48

    :cond_3f
    invoke-virtual {v3, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    if-nez v0, :cond_46

    const/4 v1, 0x1

    :cond_46
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdar:Z

    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdaq:Lcom/google/android/gms/internal/ads/zzaqa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqa;->zzst()V

    :cond_4d
    return-void
.end method


# virtual methods
.method public final getVolume()F
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdas:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdat:F

    :goto_9
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdar:Z

    if-eqz v2, :cond_e

    return v0

    :cond_e
    return v1
.end method

.method public final onAudioFocusChange(I)V
    .registers 2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdar:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdaq:Lcom/google/android/gms/internal/ads/zzaqa;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzst()V

    return-void
.end method

.method public final setMuted(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdas:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapz;->zztw()V

    return-void
.end method

.method public final setVolume(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdat:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapz;->zztw()V

    return-void
.end method

.method public final zztt()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzcxs:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapz;->zztw()V

    return-void
.end method

.method public final zztu()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzcxs:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapz;->zztw()V

    return-void
.end method
