.class final synthetic Lcom/google/android/gms/common/api/internal/zabw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zaa:Lcom/google/android/gms/common/util/BiConsumer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/util/BiConsumer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabw;->zaa:Lcom/google/android/gms/common/util/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabw;->zaa:Lcom/google/android/gms/common/util/BiConsumer;

    check-cast p1, Lcom/google/android/gms/common/api/Api$AnyClient;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
