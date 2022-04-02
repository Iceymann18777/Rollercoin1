.class final Lcom/google/android/gms/common/api/internal/zacm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zaco;


# instance fields
.field private final synthetic zaa:Lcom/google/android/gms/common/api/internal/zacn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zacn;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacm;->zaa:Lcom/google/android/gms/common/api/internal/zacn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "*>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacm;->zaa:Lcom/google/android/gms/common/api/internal/zacn;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zacn;->zab:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
