.class Landroidx/media2/session/IMediaController$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaController.java"

# interfaces
.implements Landroidx/media2/session/IMediaController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/IMediaController$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p1, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 509
    iget-object v0, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public onAllowedCommandsChanged(ILandroidx/versionedparcelable/ParcelImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 823
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 824
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 826
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    invoke-virtual {p2, v0, v1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 830
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    :goto_1a
    iget-object p2, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, v2, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_26

    .line 835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onBufferingStateChanged(ILandroidx/versionedparcelable/ParcelImpl;IJJJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 571
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 574
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    invoke-virtual {p2, v0, v1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 578
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    :goto_1a
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 582
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 583
    invoke-virtual {v0, p8, p9}, Landroid/os/Parcel;->writeLong(J)V

    .line 584
    iget-object p2, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p3, 0x4

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p4, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_31

    .line 587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_31
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onChildrenChanged(ILjava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 989
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 991
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 992
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p4, :cond_1d

    .line 994
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 995
    invoke-virtual {p4, v0, p2}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    .line 998
    :cond_1d
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    :goto_20
    iget-object p2, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x13

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p4, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_2c

    .line 1003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onConnected(ILandroidx/versionedparcelable/ParcelImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 779
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 782
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    invoke-virtual {p2, v0, v1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 786
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    :goto_1a
    iget-object p2, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, v2, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_26

    .line 791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onCurrentMediaItemChanged(ILandroidx/versionedparcelable/ParcelImpl;III)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 519
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_17

    .line 522
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    invoke-virtual {p2, v0, p1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 526
    :cond_17
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    :goto_1a
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-object p1, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    invoke-interface {p1, v1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_2d

    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onCustomCommand(ILandroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 842
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 845
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    invoke-virtual {p2, v0, v1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 849
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    if-eqz p3, :cond_23

    .line 852
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    .line 856
    :cond_23
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    :goto_26
    iget-object p2, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x10

    const/4 v1, 0x0

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_32

    .line 861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_32
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onDisconnected(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 798
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    iget-object p1, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_19
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onLibraryResult(ILandroidx/versionedparcelable/ParcelImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 887
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 890
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    invoke-virtual {p2, v0, v1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 894
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    :goto_1a
    iget-object p2, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, v2, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_26

    .line 899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onPlaybackCompleted(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 693
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    iget-object p1, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_19
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onPlaybackInfoChanged(ILandroidx/versionedparcelable/ParcelImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 642
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    invoke-virtual {p2, v0, v1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 649
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    :goto_1a
    iget-object p2, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, v2, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_25

    .line 654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onPlaybackSpeedChanged(IJJF)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 556
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 559
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 560
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 561
    iget-object p1, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x3

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_21

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_21
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onPlayerStateChanged(IJJI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 541
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 544
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 545
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    iget-object p1, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_21

    .line 549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_21
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onPlaylistChanged(ILandroidx/media2/common/ParcelImplListSlice;Landroidx/versionedparcelable/ParcelImpl;III)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 594
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 597
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    invoke-virtual {p2, v0, v1}, Landroidx/media2/common/ParcelImplListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 601
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    if-eqz p3, :cond_23

    .line 604
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    invoke-virtual {p3, v0, v1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    .line 608
    :cond_23
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    :goto_26
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    iget-object p2, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p3, 0x5

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p4, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3a

    .line 616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3a
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onPlaylistMetadataChanged(ILandroidx/versionedparcelable/ParcelImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 623
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 626
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    invoke-virtual {p2, v0, v1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 630
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    :goto_1a
    iget-object p2, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, v2, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_25

    .line 635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onRepeatModeChanged(IIIII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 661
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    iget-object p1, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x8

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_25

    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onSearchResultChanged(ILjava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1008
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 1010
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1012
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p4, :cond_1d

    .line 1015
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    invoke-virtual {p4, v0, p2}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    .line 1019
    :cond_1d
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1021
    :goto_20
    iget-object p2, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x14

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p4, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_2c

    .line 1024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onSeekCompleted(IJJJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 705
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 708
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 709
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 710
    iget-object p1, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_22

    .line 713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onSessionResult(ILandroidx/versionedparcelable/ParcelImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 866
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 868
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 871
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    invoke-virtual {p2, v0, v1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 875
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    :goto_1a
    iget-object p2, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, v2, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_26

    .line 880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onSetCustomLayout(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 810
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 813
    iget-object p1, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    .line 816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onShuffleModeChanged(IIIII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 677
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    iget-object p1, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_25

    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onSubtitleData(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 746
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 749
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    invoke-virtual {p2, v0, v1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 753
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    if-eqz p3, :cond_23

    .line 756
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    invoke-virtual {p3, v0, v1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    .line 760
    :cond_23
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    if-eqz p4, :cond_2f

    .line 763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    invoke-virtual {p4, v0, v1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_32

    .line 767
    :cond_2f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    :goto_32
    iget-object p2, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x19

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p4, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_3e

    .line 772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onTrackDeselected(ILandroidx/versionedparcelable/ParcelImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 964
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 966
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 967
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 969
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 970
    invoke-virtual {p2, v0, v1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 973
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    :goto_1a
    iget-object p2, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, v2, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_26

    .line 978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onTrackInfoChanged(ILjava/util/List;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;",
            "Landroidx/versionedparcelable/ParcelImpl;",
            "Landroidx/versionedparcelable/ParcelImpl;",
            "Landroidx/versionedparcelable/ParcelImpl;",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 906
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 907
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p3, :cond_1a

    .line 910
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    invoke-virtual {p3, v0, p2}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    .line 914
    :cond_1a
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1d
    if-eqz p4, :cond_26

    .line 917
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    invoke-virtual {p4, v0, p2}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_29

    .line 921
    :cond_26
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_29
    if-eqz p5, :cond_32

    .line 924
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    invoke-virtual {p5, v0, p2}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_35

    .line 928
    :cond_32
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_35
    if-eqz p6, :cond_3e

    .line 931
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    invoke-virtual {p6, v0, p2}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_41

    .line 935
    :cond_3e
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    :goto_41
    iget-object p2, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x16

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p4, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_4d

    .line 940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_4d
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onTrackSelected(ILandroidx/versionedparcelable/ParcelImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 947
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 948
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 950
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    invoke-virtual {p2, v0, v1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 954
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    :goto_1a
    iget-object p2, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, v2, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_26

    .line 959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onVideoSizeChanged(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.media2.session.IMediaController"

    .line 720
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 723
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    invoke-virtual {p2, v0, v1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 727
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    if-eqz p3, :cond_23

    .line 730
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    invoke-virtual {p3, v0, v1}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    .line 734
    :cond_23
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    :goto_26
    iget-object p2, p0, Landroidx/media2/session/IMediaController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x15

    const/4 v1, 0x0

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_32

    .line 739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_32
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
