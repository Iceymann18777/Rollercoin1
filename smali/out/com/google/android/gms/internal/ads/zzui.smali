.class final synthetic Lcom/google/android/gms/internal/ads/zzui;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbpk:Lcom/google/android/gms/internal/ads/zzuf;

.field private final zzzo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzuf;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->zzbpk:Lcom/google/android/gms/internal/ads/zzuf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzui;->zzzo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->zzbpk:Lcom/google/android/gms/internal/ads/zzuf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzui;->zzzo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzuf;->zzbh(Ljava/lang/String;)V

    return-void
.end method
