.class Landroidx/media/MediaSessionManagerImplBase;
.super Ljava/lang/Object;
.source "MediaSessionManagerImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    sget-boolean v0, Landroidx/media/MediaSessionManager;->DEBUG:Z

    sput-boolean v0, Landroidx/media/MediaSessionManagerImplBase;->DEBUG:Z

    return-void
.end method
