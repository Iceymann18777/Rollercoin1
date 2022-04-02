.class final synthetic Lcom/google/android/gms/common/api/internal/zabp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabp;->zaa:Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabp;->zaa:Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;->zaa()V

    return-void
.end method
