.class public abstract Landroidx/media2/session/IMediaSession$Stub;
.super Landroid/os/Binder;
.source "IMediaSession.java"

# interfaces
.implements Landroidx/media2/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/IMediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/IMediaSession$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaSession;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "androidx.media2.session.IMediaSession"

    .line 33
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 34
    instance-of v1, v0, Landroidx/media2/session/IMediaSession;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Landroidx/media2/session/IMediaSession;

    return-object v0

    .line 37
    :cond_13
    new-instance v0, Landroidx/media2/session/IMediaSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroidx/media2/session/IMediaSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "androidx.media2.session.IMediaSession"

    if-eq p1, v0, :cond_51e

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_522

    .line 708
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 549
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2f

    .line 556
    sget-object p4, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 561
    :cond_2f
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/session/IMediaSession$Stub;->deselectTrack(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 532
    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_51

    .line 539
    sget-object p4, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 544
    :cond_51
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/session/IMediaSession$Stub;->selectTrack(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 515
    :pswitch_55
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_73

    .line 522
    sget-object p4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/view/Surface;

    .line 527
    :cond_73
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/session/IMediaSession$Stub;->setSurface(Landroidx/media2/session/IMediaController;ILandroid/view/Surface;)V

    return v1

    .line 696
    :pswitch_77
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 703
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media2/session/IMediaSession$Stub;->unsubscribe(Landroidx/media2/session/IMediaController;ILjava/lang/String;)V

    return v1

    .line 677
    :pswitch_8e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b0

    .line 686
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 691
    :cond_b0
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/IMediaSession$Stub;->subscribe(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 654
    :pswitch_b4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v3

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_de

    .line 667
    sget-object p1, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    :cond_de
    move-object v8, v0

    move-object v2, p0

    .line 672
    invoke-virtual/range {v2 .. v8}, Landroidx/media2/session/IMediaSession$Stub;->getSearchResult(Landroidx/media2/session/IMediaController;ILjava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 635
    :pswitch_e4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_106

    .line 644
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 649
    :cond_106
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/IMediaSession$Stub;->search(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 612
    :pswitch_10a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v3

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_134

    .line 625
    sget-object p1, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    :cond_134
    move-object v8, v0

    move-object v2, p0

    .line 630
    invoke-virtual/range {v2 .. v8}, Landroidx/media2/session/IMediaSession$Stub;->getChildren(Landroidx/media2/session/IMediaController;ILjava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 600
    :pswitch_13a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 607
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media2/session/IMediaSession$Stub;->getItem(Landroidx/media2/session/IMediaController;ILjava/lang/String;)V

    return v1

    .line 583
    :pswitch_151
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_16f

    .line 590
    sget-object p4, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 595
    :cond_16f
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/session/IMediaSession$Stub;->getLibraryRoot(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 566
    :pswitch_173
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_191

    .line 573
    sget-object p4, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 578
    :cond_191
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/session/IMediaSession$Stub;->onControllerResult(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 503
    :pswitch_195
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 510
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media2/session/IMediaSession$Stub;->setShuffleMode(Landroidx/media2/session/IMediaController;II)V

    return v1

    .line 491
    :pswitch_1ac
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 498
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media2/session/IMediaSession$Stub;->setRepeatMode(Landroidx/media2/session/IMediaController;II)V

    return v1

    .line 481
    :pswitch_1c3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 486
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/IMediaSession$Stub;->skipToNextItem(Landroidx/media2/session/IMediaController;I)V

    return v1

    .line 471
    :pswitch_1d6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 476
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/IMediaSession$Stub;->skipToPreviousItem(Landroidx/media2/session/IMediaController;I)V

    return v1

    .line 459
    :pswitch_1e9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 466
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media2/session/IMediaSession$Stub;->skipToPlaylistItem(Landroidx/media2/session/IMediaController;II)V

    return v1

    .line 445
    :pswitch_200
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 454
    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media2/session/IMediaSession$Stub;->replacePlaylistItem(Landroidx/media2/session/IMediaController;IILjava/lang/String;)V

    return v1

    .line 433
    :pswitch_21b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 440
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media2/session/IMediaSession$Stub;->removePlaylistItem(Landroidx/media2/session/IMediaController;II)V

    return v1

    .line 419
    :pswitch_232
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 428
    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media2/session/IMediaSession$Stub;->addPlaylistItem(Landroidx/media2/session/IMediaController;IILjava/lang/String;)V

    return v1

    .line 402
    :pswitch_24d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_26b

    .line 409
    sget-object p4, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 414
    :cond_26b
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/session/IMediaSession$Stub;->updatePlaylistMetadata(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 390
    :pswitch_26f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 397
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media2/session/IMediaSession$Stub;->setMediaItem(Landroidx/media2/session/IMediaController;ILjava/lang/String;)V

    return v1

    .line 371
    :pswitch_286
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2a8

    .line 380
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 385
    :cond_2a8
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/IMediaSession$Stub;->setPlaylist(Landroidx/media2/session/IMediaController;ILjava/util/List;Landroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 359
    :pswitch_2ac
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 366
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media2/session/IMediaSession$Stub;->setPlaybackSpeed(Landroidx/media2/session/IMediaController;IF)V

    return v1

    .line 340
    :pswitch_2c3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e5

    .line 349
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 354
    :cond_2e5
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/IMediaSession$Stub;->setRating(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 321
    :pswitch_2e9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_30b

    .line 330
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 335
    :cond_30b
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/IMediaSession$Stub;->playFromMediaId(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    return v1

    .line 302
    :pswitch_30f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_331

    .line 311
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 316
    :cond_331
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/IMediaSession$Stub;->playFromSearch(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    return v1

    .line 278
    :pswitch_335
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_353

    .line 285
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    goto :goto_354

    :cond_353
    move-object p4, v0

    .line 291
    :goto_354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_363

    .line 292
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 297
    :cond_363
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/IMediaSession$Stub;->playFromUri(Landroidx/media2/session/IMediaController;ILandroid/net/Uri;Landroid/os/Bundle;)V

    return v1

    .line 259
    :pswitch_367
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_389

    .line 268
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 273
    :cond_389
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/IMediaSession$Stub;->prepareFromMediaId(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    return v1

    .line 240
    :pswitch_38d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3af

    .line 249
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 254
    :cond_3af
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/IMediaSession$Stub;->prepareFromSearch(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    return v1

    .line 216
    :pswitch_3b3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3d1

    .line 223
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    goto :goto_3d2

    :cond_3d1
    move-object p4, v0

    .line 229
    :goto_3d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3e1

    .line 230
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 235
    :cond_3e1
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/IMediaSession$Stub;->prepareFromUri(Landroidx/media2/session/IMediaController;ILandroid/net/Uri;Landroid/os/Bundle;)V

    return v1

    .line 192
    :pswitch_3e5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_403

    .line 199
    sget-object p4, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_404

    :cond_403
    move-object p4, v0

    .line 205
    :goto_404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_413

    .line 206
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 211
    :cond_413
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media2/session/IMediaSession$Stub;->onCustomCommand(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;)V

    return v1

    .line 180
    :pswitch_417
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 187
    invoke-virtual {p0, p1, p3, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->seekTo(Landroidx/media2/session/IMediaController;IJ)V

    return v1

    .line 170
    :pswitch_42e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 175
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/IMediaSession$Stub;->skipBackward(Landroidx/media2/session/IMediaController;I)V

    return v1

    .line 160
    :pswitch_441
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 165
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/IMediaSession$Stub;->skipForward(Landroidx/media2/session/IMediaController;I)V

    return v1

    .line 150
    :pswitch_454
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 155
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/IMediaSession$Stub;->rewind(Landroidx/media2/session/IMediaController;I)V

    return v1

    .line 140
    :pswitch_467
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 145
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/IMediaSession$Stub;->fastForward(Landroidx/media2/session/IMediaController;I)V

    return v1

    .line 130
    :pswitch_47a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 135
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/IMediaSession$Stub;->prepare(Landroidx/media2/session/IMediaController;I)V

    return v1

    .line 120
    :pswitch_48d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 125
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/IMediaSession$Stub;->pause(Landroidx/media2/session/IMediaController;I)V

    return v1

    .line 110
    :pswitch_4a0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 115
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/IMediaSession$Stub;->play(Landroidx/media2/session/IMediaController;I)V

    return v1

    .line 96
    :pswitch_4b3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 105
    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media2/session/IMediaSession$Stub;->adjustVolume(Landroidx/media2/session/IMediaController;III)V

    return v1

    .line 82
    :pswitch_4ce
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 91
    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media2/session/IMediaSession$Stub;->setVolumeTo(Landroidx/media2/session/IMediaController;III)V

    return v1

    .line 72
    :pswitch_4e9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 77
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/IMediaSession$Stub;->release(Landroidx/media2/session/IMediaController;I)V

    return v1

    .line 55
    :pswitch_4fc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object p1

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_51a

    .line 62
    sget-object p4, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 67
    :cond_51a
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/session/IMediaSession$Stub;->connect(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V

    return v1

    .line 50
    :cond_51e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_522
    .packed-switch 0x1
        :pswitch_4fc
        :pswitch_4e9
        :pswitch_4ce
        :pswitch_4b3
        :pswitch_4a0
        :pswitch_48d
        :pswitch_47a
        :pswitch_467
        :pswitch_454
        :pswitch_441
        :pswitch_42e
        :pswitch_417
        :pswitch_3e5
        :pswitch_3b3
        :pswitch_38d
        :pswitch_367
        :pswitch_335
        :pswitch_30f
        :pswitch_2e9
        :pswitch_2c3
        :pswitch_2ac
        :pswitch_286
        :pswitch_26f
        :pswitch_24d
        :pswitch_232
        :pswitch_21b
        :pswitch_200
        :pswitch_1e9
        :pswitch_1d6
        :pswitch_1c3
        :pswitch_1ac
        :pswitch_195
        :pswitch_173
        :pswitch_151
        :pswitch_13a
        :pswitch_10a
        :pswitch_e4
        :pswitch_b4
        :pswitch_8e
        :pswitch_77
        :pswitch_55
        :pswitch_33
        :pswitch_11
    .end packed-switch
.end method
