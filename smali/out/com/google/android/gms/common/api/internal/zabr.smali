.class public final Lcom/google/android/gms/common/api/internal/zabr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"


# instance fields
.field public final zaa:Lcom/google/android/gms/common/api/internal/zab;

.field public final zab:I

.field public final zac:Lcom/google/android/gms/common/api/GoogleApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zab;ILcom/google/android/gms/common/api/GoogleApi;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zab;",
            "I",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabr;->zaa:Lcom/google/android/gms/common/api/internal/zab;

    .line 3
    iput p2, p0, Lcom/google/android/gms/common/api/internal/zabr;->zab:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zabr;->zac:Lcom/google/android/gms/common/api/GoogleApi;

    return-void
.end method
