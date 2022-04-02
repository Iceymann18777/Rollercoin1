.class public Landroidx/media2/common/UriMediaItem;
.super Landroidx/media2/common/MediaItem;
.source "UriMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/UriMediaItem$Builder;
    }
.end annotation


# instance fields
.field mUri:Landroid/net/Uri;

.field mUriCookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation
.end field

.field mUriHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Landroidx/media2/common/MediaItem;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/media2/common/UriMediaItem$Builder;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1}, Landroidx/media2/common/MediaItem;-><init>(Landroidx/media2/common/MediaItem$Builder;)V

    .line 67
    iget-object v0, p1, Landroidx/media2/common/UriMediaItem$Builder;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/common/UriMediaItem;->mUri:Landroid/net/Uri;

    .line 68
    iget-object v0, p1, Landroidx/media2/common/UriMediaItem$Builder;->mUriHeader:Ljava/util/Map;

    iput-object v0, p0, Landroidx/media2/common/UriMediaItem;->mUriHeader:Ljava/util/Map;

    .line 69
    iget-object p1, p1, Landroidx/media2/common/UriMediaItem$Builder;->mUriCookies:Ljava/util/List;

    iput-object p1, p0, Landroidx/media2/common/UriMediaItem;->mUriCookies:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 77
    iget-object v0, p0, Landroidx/media2/common/UriMediaItem;->mUri:Landroid/net/Uri;

    return-object v0
.end method
