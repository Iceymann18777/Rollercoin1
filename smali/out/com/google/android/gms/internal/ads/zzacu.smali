.class final synthetic Lcom/google/android/gms/internal/ads/zzacu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzanj;


# instance fields
.field private final zzcbg:Lorg/json/JSONObject;

.field private final zzcbp:Lcom/google/android/gms/internal/ads/zzacq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzacq;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacu;->zzcbp:Lcom/google/android/gms/internal/ads/zzacq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzacu;->zzcbg:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzanz;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacu;->zzcbp:Lcom/google/android/gms/internal/ads/zzacq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacu;->zzcbg:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzacq;->zzb(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzaqw;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object p1

    return-object p1
.end method
