.class Lcom/yandex/metrica/IMetricaService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/IMetricaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/IMetricaService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/yandex/metrica/IMetricaService$Stub$Proxy;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/yandex/metrica/IMetricaService$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public reportData(Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.yandex.metrica.IMetricaService"

    .line 131
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 133
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 137
    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    :goto_17
    iget-object p1, p0, Lcom/yandex/metrica/IMetricaService$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_22

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public reportEvent(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.yandex.metrica.IMetricaService"

    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p4, :cond_1d

    .line 115
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {p4, v0, p1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    .line 119
    :cond_1d
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    :goto_20
    iget-object p1, p0, Lcom/yandex/metrica/IMetricaService$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, p3, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2a

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2a
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
