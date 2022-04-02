.class final Lcom/google/android/gms/common/api/internal/zabf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zaa:I

.field private final synthetic zab:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabf;->zab:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zabf;->zaa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabf;->zab:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zabf;->zaa:I

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;I)V

    return-void
.end method
