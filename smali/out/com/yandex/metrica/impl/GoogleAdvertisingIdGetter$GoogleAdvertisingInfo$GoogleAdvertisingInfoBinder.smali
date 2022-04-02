.class public abstract Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GoogleAdvertisingInfoBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;
    }
.end annotation


# direct methods
.method public static Create(Landroid/os/IBinder;)Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 201
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 202
    instance-of v1, v0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;

    if-eqz v1, :cond_13

    .line 203
    check-cast v0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;

    return-object v0

    .line 205
    :cond_13
    new-instance v0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_24

    const/4 v2, 0x2

    if-eq p1, v2, :cond_d

    .line 224
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 217
    :cond_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 219
    :goto_19
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->getEnabled(Z)Z

    move-result p1

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 211
    :cond_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->getId()Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
