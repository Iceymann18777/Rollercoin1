.class public final Lcom/google/android/gms/internal/ads/zzer;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzaeg:Ljava/lang/String;

.field private final zzaeh:Lorg/json/JSONObject;

.field private final zzaei:Ljava/lang/String;

.field private final zzaej:Ljava/lang/String;

.field private final zzaek:Z

.field private final zzael:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzang;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzaej:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzer;->zzaeh:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzaei:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzer;->zzaeg:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzer;->zzaek:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzer;->zzael:Z

    return-void
.end method


# virtual methods
.method public final zzfv()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzaeg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzfw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzaej:Ljava/lang/String;

    return-object v0
.end method

.method public final zzfx()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzaeh:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zzfy()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzaei:Ljava/lang/String;

    return-object v0
.end method

.method public final zzfz()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzaek:Z

    return v0
.end method

.method public final zzga()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzael:Z

    return v0
.end method
