.class public Landroidx/media2/session/MediaSession;
.super Ljava/lang/Object;
.source "MediaSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaSession$MediaSessionImpl;,
        Landroidx/media2/session/MediaSession$CommandButton;
    }
.end annotation


# static fields
.field private static final SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media2/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATIC_LOCK:Ljava/lang/Object;


# instance fields
.field private final mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media2/session/MediaSession;->STATIC_LOCK:Ljava/lang/Object;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media2/session/MediaSession;->SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 207
    :try_start_0
    sget-object v0, Landroidx/media2/session/MediaSession;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_18

    .line 208
    :try_start_3
    sget-object v1, Landroidx/media2/session/MediaSession;->SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    .line 210
    :try_start_f
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_18

    goto :goto_18

    :catchall_15
    move-exception v1

    .line 209
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_18} :catch_18

    :catch_18
    :goto_18
    return-void
.end method
