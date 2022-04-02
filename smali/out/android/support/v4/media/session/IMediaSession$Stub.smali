.class public abstract Landroid/support/v4/media/session/IMediaSession$Stub;
.super Landroid/os/Binder;
.source "IMediaSession.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.support.v4.media.session.IMediaSession"

    .line 30
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 31
    instance-of v1, v0, Landroid/support/v4/media/session/IMediaSession;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/support/v4/media/session/IMediaSession;

    return-object v0

    .line 34
    :cond_13
    new-instance v0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.support.v4.media.session.IMediaSession"

    if-eq p1, v0, :cond_413

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_418

    .line 641
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 559
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_24

    .line 562
    sget-object p1, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/RatingCompat;

    goto :goto_25

    :cond_24
    move-object p1, v3

    .line 568
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_34

    .line 569
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 574
    :cond_34
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->rateWithExtras(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 351
    :pswitch_3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getSessionInfo()Landroid/os/Bundle;

    move-result-object p1

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4e

    .line 355
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_51

    .line 359
    :cond_4e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_51
    return v1

    .line 580
    :pswitch_52
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 583
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/IMediaSession$Stub;->setPlaybackSpeed(F)V

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 616
    :pswitch_60
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 619
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/IMediaSession$Stub;->setShuffleMode(I)V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 290
    :pswitch_6e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getShuffleMode()I

    move-result p1

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 589
    :pswitch_7c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_86

    const/4 v0, 0x1

    .line 592
    :cond_86
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->setCaptioningEnabled(Z)V

    .line 593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 266
    :pswitch_8d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->isCaptioningEnabled()Z

    move-result p1

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 342
    :pswitch_9b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 345
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/IMediaSession$Stub;->removeQueueItemAt(I)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 328
    :pswitch_a9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_bb

    .line 331
    sget-object p1, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 336
    :cond_bb
    invoke-virtual {p0, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 312
    :pswitch_c2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d4

    .line 315
    sget-object p1, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 321
    :cond_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 322
    invoke-virtual {p0, v3, p1}, Landroid/support/v4/media/session/IMediaSession$Stub;->addQueueItemAt(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 298
    :pswitch_df
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f1

    .line 301
    sget-object p1, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 306
    :cond_f1
    invoke-virtual {p0, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 607
    :pswitch_f8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_102

    const/4 v0, 0x1

    .line 610
    :cond_102
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->setShuffleModeEnabledRemoved(Z)V

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 598
    :pswitch_109
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 601
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/IMediaSession$Stub;->setRepeatMode(I)V

    .line 602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 282
    :pswitch_117
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->isShuffleModeEnabledRemoved()Z

    move-result p1

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 274
    :pswitch_125
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getRepeatMode()I

    move-result p1

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 404
    :pswitch_133
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_145

    .line 407
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    goto :goto_146

    :cond_145
    move-object p1, v3

    .line 413
    :goto_146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_155

    .line 414
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 419
    :cond_155
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 388
    :pswitch_15c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_172

    .line 393
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 398
    :cond_172
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 372
    :pswitch_179
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_18f

    .line 377
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 382
    :cond_18f
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 365
    :pswitch_196
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->prepare()V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 258
    :pswitch_1a0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getRatingType()I

    move-result p1

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 244
    :pswitch_1ae
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1c1

    .line 248
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c4

    .line 252
    :cond_1c1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1c4
    return v1

    .line 230
    :pswitch_1c5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1d8

    .line 234
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    invoke-static {p1, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1db

    .line 238
    :cond_1d8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1db
    return v1

    .line 222
    :pswitch_1dc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getQueue()Ljava/util/List;

    move-result-object p1

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 208
    :pswitch_1ea
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1fd

    .line 212
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    invoke-virtual {p1, p3, v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_200

    .line 216
    :cond_1fd
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_200
    return v1

    .line 194
    :pswitch_201
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_214

    .line 198
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    invoke-virtual {p1, p3, v1}, Landroid/support/v4/media/MediaMetadataCompat;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_217

    .line 202
    :cond_214
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_217
    return v1

    .line 625
    :pswitch_218
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_22e

    .line 630
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 635
    :cond_22e
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 545
    :pswitch_235
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_247

    .line 548
    sget-object p1, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/support/v4/media/RatingCompat;

    .line 553
    :cond_247
    invoke-virtual {p0, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->rate(Landroid/support/v4/media/RatingCompat;)V

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 536
    :pswitch_24e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 539
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/IMediaSession$Stub;->seekTo(J)V

    .line 540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 529
    :pswitch_25c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->rewind()V

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 522
    :pswitch_266
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->fastForward()V

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 515
    :pswitch_270
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->previous()V

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 508
    :pswitch_27a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->next()V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 501
    :pswitch_284
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->stop()V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 494
    :pswitch_28e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->pause()V

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 485
    :pswitch_298
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 488
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/IMediaSession$Stub;->skipToQueueItem(J)V

    .line 489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 464
    :pswitch_2a6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2b8

    .line 467
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    goto :goto_2b9

    :cond_2b8
    move-object p1, v3

    .line 473
    :goto_2b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2c8

    .line 474
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 479
    :cond_2c8
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 448
    :pswitch_2cf
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2e5

    .line 453
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 458
    :cond_2e5
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 432
    :pswitch_2ec
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_302

    .line 437
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 442
    :cond_302
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 425
    :pswitch_309
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->play()V

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 181
    :pswitch_313
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 188
    invoke-virtual {p0, p1, p4, p2}, Landroid/support/v4/media/session/IMediaSession$Stub;->setVolumeTo(IILjava/lang/String;)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 168
    :pswitch_329
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 175
    invoke-virtual {p0, p1, p4, p2}, Landroid/support/v4/media/session/IMediaSession$Stub;->adjustVolume(IILjava/lang/String;)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 154
    :pswitch_33f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;

    move-result-object p1

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_352

    .line 158
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {p1, p3, v1}, Landroid/support/v4/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_355

    .line 162
    :cond_352
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_355
    return v1

    .line 146
    :pswitch_356
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getFlags()J

    move-result-wide p1

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 132
    :pswitch_364
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_377

    .line 136
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    invoke-virtual {p1, p3, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_37a

    .line 140
    :cond_377
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_37a
    return v1

    .line 124
    :pswitch_37b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getTag()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 116
    :pswitch_389
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 108
    :pswitch_397
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->isTransportControlEnabled()Z

    move-result p1

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 99
    :pswitch_3a5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;

    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/IMediaSession$Stub;->unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 90
    :pswitch_3b7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/IMediaSession$Stub;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 75
    :pswitch_3c9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3db

    .line 78
    sget-object p1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/KeyEvent;

    .line 83
    :cond_3db
    invoke-virtual {p0, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendMediaButton(Landroid/view/KeyEvent;)Z

    move-result p1

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 52
    :pswitch_3e6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3fc

    .line 57
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    goto :goto_3fd

    :cond_3fc
    move-object p4, v3

    .line 63
    :goto_3fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40c

    .line 64
    sget-object v0, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .line 69
    :cond_40c
    invoke-virtual {p0, p1, p4, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 47
    :cond_413
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_418
    .packed-switch 0x1
        :pswitch_3e6
        :pswitch_3c9
        :pswitch_3b7
        :pswitch_3a5
        :pswitch_397
        :pswitch_389
        :pswitch_37b
        :pswitch_364
        :pswitch_356
        :pswitch_33f
        :pswitch_329
        :pswitch_313
        :pswitch_309
        :pswitch_2ec
        :pswitch_2cf
        :pswitch_2a6
        :pswitch_298
        :pswitch_28e
        :pswitch_284
        :pswitch_27a
        :pswitch_270
        :pswitch_266
        :pswitch_25c
        :pswitch_24e
        :pswitch_235
        :pswitch_218
        :pswitch_201
        :pswitch_1ea
        :pswitch_1dc
        :pswitch_1c5
        :pswitch_1ae
        :pswitch_1a0
        :pswitch_196
        :pswitch_179
        :pswitch_15c
        :pswitch_133
        :pswitch_125
        :pswitch_117
        :pswitch_109
        :pswitch_f8
        :pswitch_df
        :pswitch_c2
        :pswitch_a9
        :pswitch_9b
        :pswitch_8d
        :pswitch_7c
        :pswitch_6e
        :pswitch_60
        :pswitch_52
        :pswitch_3b
        :pswitch_12
    .end packed-switch
.end method
