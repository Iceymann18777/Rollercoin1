.class final Lcom/google/android/gms/common/api/internal/zace;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zaa:Lcom/google/android/gms/signin/internal/zam;

.field private final synthetic zab:Lcom/google/android/gms/common/api/internal/zacc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zacc;Lcom/google/android/gms/signin/internal/zam;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zab:Lcom/google/android/gms/common/api/internal/zacc;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zace;->zaa:Lcom/google/android/gms/signin/internal/zam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zab:Lcom/google/android/gms/common/api/internal/zacc;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaa:Lcom/google/android/gms/signin/internal/zam;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zacc;->zaa(Lcom/google/android/gms/common/api/internal/zacc;Lcom/google/android/gms/signin/internal/zam;)V

    return-void
.end method
