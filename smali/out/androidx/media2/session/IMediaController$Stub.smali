.class public abstract Landroidx/media2/session/IMediaController$Stub;
.super Landroid/os/Binder;
.source "IMediaController.java"

# interfaces
.implements Landroidx/media2/session/IMediaController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/IMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/IMediaController$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "androidx.media2.session.IMediaController"

    .line 33
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 34
    instance-of v1, v0, Landroidx/media2/session/IMediaController;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Landroidx/media2/session/IMediaController;

    return-object v0

    .line 37
    :cond_13
    new-instance v0, Landroidx/media2/session/IMediaController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroidx/media2/session/IMediaController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v10, p0

    move v0, p1

    move-object/from16 v1, p2

    const v2, 0x5f4e5446

    const/4 v11, 0x1

    const-string v3, "androidx.media2.session.IMediaController"

    if-eq v0, v2, :cond_36b

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_372

    .line 496
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 261
    :pswitch_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2b

    .line 266
    sget-object v3, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_2c

    :cond_2b
    move-object v3, v2

    .line 272
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3b

    .line 273
    sget-object v4, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_3c

    :cond_3b
    move-object v4, v2

    .line 279
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4b

    .line 280
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 285
    :cond_4b
    invoke-virtual {p0, v0, v3, v4, v2}, Landroidx/media2/session/IMediaController$Stub;->onSubtitleData(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V

    return v11

    .line 443
    :pswitch_4f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_65

    .line 448
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 453
    :cond_65
    invoke-virtual {p0, v0, v2}, Landroidx/media2/session/IMediaController$Stub;->onTrackDeselected(ILandroidx/versionedparcelable/ParcelImpl;)V

    return v11

    .line 428
    :pswitch_69
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7f

    .line 433
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 438
    :cond_7f
    invoke-virtual {p0, v0, v2}, Landroidx/media2/session/IMediaController$Stub;->onTrackSelected(ILandroidx/versionedparcelable/ParcelImpl;)V

    return v11

    .line 390
    :pswitch_83
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 394
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a0

    .line 397
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    move-object v5, v0

    goto :goto_a1

    :cond_a0
    move-object v5, v2

    .line 403
    :goto_a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b1

    .line 404
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    move-object v6, v0

    goto :goto_b2

    :cond_b1
    move-object v6, v2

    .line 410
    :goto_b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c2

    .line 411
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    move-object v7, v0

    goto :goto_c3

    :cond_c2
    move-object v7, v2

    .line 417
    :goto_c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d3

    .line 418
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    move-object v8, v0

    goto :goto_d4

    :cond_d3
    move-object v8, v2

    :goto_d4
    move-object v0, p0

    move v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    .line 423
    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/IMediaController$Stub;->onTrackInfoChanged(ILjava/util/List;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V

    return v11

    .line 239
    :pswitch_df
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f5

    .line 244
    sget-object v3, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_f6

    :cond_f5
    move-object v3, v2

    .line 250
    :goto_f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_105

    .line 251
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 256
    :cond_105
    invoke-virtual {p0, v0, v3, v2}, Landroidx/media2/session/IMediaController$Stub;->onVideoSizeChanged(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V

    return v11

    .line 477
    :pswitch_109
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_127

    .line 486
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 491
    :cond_127
    invoke-virtual {p0, v0, v3, v4, v2}, Landroidx/media2/session/IMediaController$Stub;->onSearchResultChanged(ILjava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V

    return v11

    .line 458
    :pswitch_12b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_149

    .line 467
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 472
    :cond_149
    invoke-virtual {p0, v0, v3, v4, v2}, Landroidx/media2/session/IMediaController$Stub;->onChildrenChanged(ILjava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V

    return v11

    .line 375
    :pswitch_14d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_163

    .line 380
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 385
    :cond_163
    invoke-virtual {p0, v0, v2}, Landroidx/media2/session/IMediaController$Stub;->onLibraryResult(ILandroidx/versionedparcelable/ParcelImpl;)V

    return v11

    .line 360
    :pswitch_167
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17d

    .line 365
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 370
    :cond_17d
    invoke-virtual {p0, v0, v2}, Landroidx/media2/session/IMediaController$Stub;->onSessionResult(ILandroidx/versionedparcelable/ParcelImpl;)V

    return v11

    .line 338
    :pswitch_181
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_197

    .line 343
    sget-object v3, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_198

    :cond_197
    move-object v3, v2

    .line 349
    :goto_198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a7

    .line 350
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/Bundle;

    .line 355
    :cond_1a7
    invoke-virtual {p0, v0, v3, v2}, Landroidx/media2/session/IMediaController$Stub;->onCustomCommand(ILandroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;)V

    return v11

    .line 323
    :pswitch_1ab
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c1

    .line 328
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 333
    :cond_1c1
    invoke-virtual {p0, v0, v2}, Landroidx/media2/session/IMediaController$Stub;->onAllowedCommandsChanged(ILandroidx/versionedparcelable/ParcelImpl;)V

    return v11

    .line 313
    :pswitch_1c5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 317
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 318
    invoke-virtual {p0, v0, v1}, Landroidx/media2/session/IMediaController$Stub;->onSetCustomLayout(ILjava/util/List;)V

    return v11

    .line 305
    :pswitch_1d6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 308
    invoke-virtual {p0, v0}, Landroidx/media2/session/IMediaController$Stub;->onDisconnected(I)V

    return v11

    .line 290
    :pswitch_1e1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f7

    .line 295
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 300
    :cond_1f7
    invoke-virtual {p0, v0, v2}, Landroidx/media2/session/IMediaController$Stub;->onConnected(ILandroidx/versionedparcelable/ParcelImpl;)V

    return v11

    .line 225
    :pswitch_1fb
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object v0, p0

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    .line 234
    invoke-virtual/range {v0 .. v7}, Landroidx/media2/session/IMediaController$Stub;->onSeekCompleted(IJJJ)V

    return v11

    .line 217
    :pswitch_217
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 220
    invoke-virtual {p0, v0}, Landroidx/media2/session/IMediaController$Stub;->onPlaybackCompleted(I)V

    return v11

    .line 201
    :pswitch_222
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 212
    invoke-virtual/range {v0 .. v5}, Landroidx/media2/session/IMediaController$Stub;->onShuffleModeChanged(IIIII)V

    return v11

    .line 185
    :pswitch_243
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 196
    invoke-virtual/range {v0 .. v5}, Landroidx/media2/session/IMediaController$Stub;->onRepeatModeChanged(IIIII)V

    return v11

    .line 170
    :pswitch_264
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27a

    .line 175
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 180
    :cond_27a
    invoke-virtual {p0, v0, v2}, Landroidx/media2/session/IMediaController$Stub;->onPlaybackInfoChanged(ILandroidx/versionedparcelable/ParcelImpl;)V

    return v11

    .line 155
    :pswitch_27e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_294

    .line 160
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 165
    :cond_294
    invoke-virtual {p0, v0, v2}, Landroidx/media2/session/IMediaController$Stub;->onPlaylistMetadataChanged(ILandroidx/versionedparcelable/ParcelImpl;)V

    return v11

    .line 127
    :pswitch_298
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2af

    .line 132
    sget-object v0, Landroidx/media2/common/ParcelImplListSlice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/ParcelImplListSlice;

    move-object v4, v0

    goto :goto_2b0

    :cond_2af
    move-object v4, v2

    .line 138
    :goto_2b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c0

    .line 139
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    move-object v5, v0

    goto :goto_2c1

    :cond_2c0
    move-object v5, v2

    .line 145
    :goto_2c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v0, p0

    move v1, v3

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    .line 150
    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/IMediaController$Stub;->onPlaylistChanged(ILandroidx/media2/common/ParcelImplListSlice;Landroidx/versionedparcelable/ParcelImpl;III)V

    return v11

    .line 104
    :pswitch_2d8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2ee

    .line 109
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    move-object v2, v0

    .line 115
    :cond_2ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    move-object v0, p0

    move v1, v3

    move v3, v4

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v12

    .line 122
    invoke-virtual/range {v0 .. v9}, Landroidx/media2/session/IMediaController$Stub;->onBufferingStateChanged(ILandroidx/versionedparcelable/ParcelImpl;IJJJ)V

    return v11

    .line 90
    :pswitch_308
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    move-object v0, p0

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    .line 99
    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/IMediaController$Stub;->onPlaybackSpeedChanged(IJJF)V

    return v11

    .line 76
    :pswitch_324
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/IMediaController$Stub;->onPlayerStateChanged(IJJI)V

    return v11

    .line 55
    :pswitch_340
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_356

    .line 60
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    move-object v2, v0

    .line 66
    :cond_356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    move v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 71
    invoke-virtual/range {v0 .. v5}, Landroidx/media2/session/IMediaController$Stub;->onCurrentMediaItemChanged(ILandroidx/versionedparcelable/ParcelImpl;III)V

    return v11

    :cond_36b
    move-object/from16 v0, p3

    .line 50
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    nop

    :pswitch_data_372
    .packed-switch 0x1
        :pswitch_340
        :pswitch_324
        :pswitch_308
        :pswitch_2d8
        :pswitch_298
        :pswitch_27e
        :pswitch_264
        :pswitch_243
        :pswitch_222
        :pswitch_217
        :pswitch_1fb
        :pswitch_1e1
        :pswitch_1d6
        :pswitch_1c5
        :pswitch_1ab
        :pswitch_181
        :pswitch_167
        :pswitch_14d
        :pswitch_12b
        :pswitch_109
        :pswitch_df
        :pswitch_83
        :pswitch_69
        :pswitch_4f
        :pswitch_15
    .end packed-switch
.end method
