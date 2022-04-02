.class final Lcom/google/android/gms/common/internal/service/zaf;
.super Lcom/google/android/gms/common/internal/service/zag;
.source "com.google.android.gms:play-services-base@@17.3.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/service/zac;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/service/zag;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/common/internal/service/zaj;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/service/zaj;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/service/zak;

    new-instance v0, Lcom/google/android/gms/common/internal/service/zae;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/service/zae;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/service/zak;->zaa(Lcom/google/android/gms/common/internal/service/zai;)V

    return-void
.end method
