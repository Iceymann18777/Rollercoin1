.class final Lcom/google/android/gms/common/api/internal/zaak;
.super Lcom/google/android/gms/signin/internal/zad;
.source "com.google.android.gms:play-services-base@@17.3.0"


# instance fields
.field private final zaa:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/zaaf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaaf;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zad;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaak;->zaa:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zaa(Lcom/google/android/gms/signin/internal/zam;)V
    .registers 5

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaak;->zaa:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaaf;

    if-nez v0, :cond_b

    return-void

    .line 7
    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaf;->zad(Lcom/google/android/gms/common/api/internal/zaaf;)Lcom/google/android/gms/common/api/internal/zaaz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/zaan;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/common/api/internal/zaan;-><init>(Lcom/google/android/gms/common/api/internal/zaak;Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/api/internal/zaaf;Lcom/google/android/gms/signin/internal/zam;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zaaz;->zaa(Lcom/google/android/gms/common/api/internal/zaay;)V

    return-void
.end method
