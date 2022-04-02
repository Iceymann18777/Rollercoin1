.class final Lcom/google/android/gms/internal/ads/zzdd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzsl:Lcom/google/android/gms/internal/ads/zzcz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdd;->zzsl:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdd;->zzsl:Lcom/google/android/gms/internal/ads/zzcz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcz;->zzrt:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznk;->initialize(Landroid/content/Context;)V

    return-void
.end method
