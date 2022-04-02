.class final Lcom/google/android/gms/internal/ads/zznt;
.super Lcom/google/android/gms/internal/ads/zznr;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznr;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    return-object p2
.end method
