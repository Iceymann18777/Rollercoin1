.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
.super Landroid/os/ResultReceiver;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraBinderRequestResultReceiver"
.end annotation


# instance fields
.field private mMediaControllerImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 6

    .line 2333
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->mMediaControllerImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    if-eqz p1, :cond_32

    if-nez p2, :cond_d

    goto :goto_32

    .line 2337
    :cond_d
    iget-object v0, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2338
    :try_start_10
    iget-object v1, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const-string v2, "android.support.v4.media.session.EXTRA_BINDER"

    .line 2340
    invoke-static {p2, v2}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2339
    invoke-static {v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;

    move-result-object v2

    .line 2338
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setExtraBinder(Landroid/support/v4/media/session/IMediaSession;)V

    .line 2342
    iget-object v1, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const-string v2, "android.support.v4.media.session.SESSION_TOKEN2"

    .line 2343
    invoke-static {p2, v2}, Landroidx/versionedparcelable/ParcelUtils;->getVersionedParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p2

    .line 2342
    invoke-virtual {v1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSession2Token(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 2345
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->processPendingCallbacksLocked()V

    .line 2346
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_2f

    throw p1

    :cond_32
    :goto_32
    return-void
.end method
