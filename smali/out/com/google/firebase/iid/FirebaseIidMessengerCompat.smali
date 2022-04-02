.class public Lcom/google/firebase/iid/FirebaseIidMessengerCompat;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/FirebaseIidMessengerCompat$HandleOldParcelNameClassLoader;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/iid/FirebaseIidMessengerCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field messenger:Landroid/os/Messenger;

.field messengerCompat:Lcom/google/firebase/iid/IMessengerCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/google/firebase/iid/FirebaseIidMessengerCompat$1;

    invoke-direct {v0}, Lcom/google/firebase/iid/FirebaseIidMessengerCompat$1;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/FirebaseIidMessengerCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    .line 8
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseIidMessengerCompat;->messenger:Landroid/os/Messenger;

    return-void

    .line 9
    :cond_11
    new-instance v0, Lcom/google/firebase/iid/IMessengerCompat$Proxy;

    invoke-direct {v0, p1}, Lcom/google/firebase/iid/IMessengerCompat$Proxy;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseIidMessengerCompat;->messengerCompat:Lcom/google/firebase/iid/IMessengerCompat;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 22
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseIidMessengerCompat;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    check-cast p1, Lcom/google/firebase/iid/FirebaseIidMessengerCompat;

    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseIidMessengerCompat;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_12} :catch_13

    return p1

    :catch_13
    return v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseIidMessengerCompat;->messenger:Landroid/os/Messenger;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseIidMessengerCompat;->messengerCompat:Lcom/google/firebase/iid/IMessengerCompat;

    invoke-interface {v0}, Lcom/google/firebase/iid/IMessengerCompat;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseIidMessengerCompat;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public send(Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseIidMessengerCompat;->messenger:Landroid/os/Messenger;

    if-eqz v0, :cond_8

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void

    .line 17
    :cond_8
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseIidMessengerCompat;->messengerCompat:Lcom/google/firebase/iid/IMessengerCompat;

    invoke-interface {v0, p1}, Lcom/google/firebase/iid/IMessengerCompat;->send(Landroid/os/Message;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 27
    iget-object p2, p0, Lcom/google/firebase/iid/FirebaseIidMessengerCompat;->messenger:Landroid/os/Messenger;

    if-eqz p2, :cond_c

    .line 28
    invoke-virtual {p2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void

    .line 29
    :cond_c
    iget-object p2, p0, Lcom/google/firebase/iid/FirebaseIidMessengerCompat;->messengerCompat:Lcom/google/firebase/iid/IMessengerCompat;

    invoke-interface {p2}, Lcom/google/firebase/iid/IMessengerCompat;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
