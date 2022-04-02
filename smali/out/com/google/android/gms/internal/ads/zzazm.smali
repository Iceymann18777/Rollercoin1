.class final Lcom/google/android/gms/internal/ads/zzazm;
.super Ljava/lang/ThreadLocal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/security/SecureRandom;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazl;->zzaas()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method
