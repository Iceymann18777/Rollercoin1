.class public final Landroidx/media2/common/UriMediaItem$Builder;
.super Landroidx/media2/common/MediaItem$Builder;
.source "UriMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/UriMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, v0, v0}, Landroidx/media2/common/UriMediaItem$Builder;-><init>(Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Landroidx/media2/common/MediaItem$Builder;-><init>()V

    const-string v0, "uri cannot be null"

    .line 143
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iput-object p1, p0, Landroidx/media2/common/UriMediaItem$Builder;->mUri:Landroid/net/Uri;

    if-eqz p3, :cond_1f

    .line 146
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 147
    instance-of v0, v0, Ljava/net/CookieManager;

    if-eqz v0, :cond_17

    goto :goto_1f

    .line 148
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The cookie handler has to be of CookieManager type when cookies are provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_1f
    :goto_1f
    iput-object p1, p0, Landroidx/media2/common/UriMediaItem$Builder;->mUri:Landroid/net/Uri;

    if-eqz p2, :cond_2a

    .line 156
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Landroidx/media2/common/UriMediaItem$Builder;->mUriHeader:Ljava/util/Map;

    :cond_2a
    if-eqz p3, :cond_33

    .line 159
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/media2/common/UriMediaItem$Builder;->mUriCookies:Ljava/util/List;

    :cond_33
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroidx/media2/common/MediaItem;
    .registers 2

    .line 105
    invoke-virtual {p0}, Landroidx/media2/common/UriMediaItem$Builder;->build()Landroidx/media2/common/UriMediaItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroidx/media2/common/UriMediaItem;
    .registers 2

    .line 190
    new-instance v0, Landroidx/media2/common/UriMediaItem;

    invoke-direct {v0, p0}, Landroidx/media2/common/UriMediaItem;-><init>(Landroidx/media2/common/UriMediaItem$Builder;)V

    return-object v0
.end method

.method public bridge synthetic setEndPosition(J)Landroidx/media2/common/MediaItem$Builder;
    .registers 3

    .line 105
    invoke-virtual {p0, p1, p2}, Landroidx/media2/common/UriMediaItem$Builder;->setEndPosition(J)Landroidx/media2/common/UriMediaItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setEndPosition(J)Landroidx/media2/common/UriMediaItem$Builder;
    .registers 3

    .line 181
    invoke-super {p0, p1, p2}, Landroidx/media2/common/MediaItem$Builder;->setEndPosition(J)Landroidx/media2/common/MediaItem$Builder;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/UriMediaItem$Builder;

    return-object p1
.end method

.method public bridge synthetic setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$Builder;
    .registers 2

    .line 105
    invoke-virtual {p0, p1}, Landroidx/media2/common/UriMediaItem$Builder;->setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/UriMediaItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/UriMediaItem$Builder;
    .registers 2

    .line 167
    invoke-super {p0, p1}, Landroidx/media2/common/MediaItem$Builder;->setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$Builder;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/UriMediaItem$Builder;

    return-object p1
.end method

.method public bridge synthetic setStartPosition(J)Landroidx/media2/common/MediaItem$Builder;
    .registers 3

    .line 105
    invoke-virtual {p0, p1, p2}, Landroidx/media2/common/UriMediaItem$Builder;->setStartPosition(J)Landroidx/media2/common/UriMediaItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setStartPosition(J)Landroidx/media2/common/UriMediaItem$Builder;
    .registers 3

    .line 174
    invoke-super {p0, p1, p2}, Landroidx/media2/common/MediaItem$Builder;->setStartPosition(J)Landroidx/media2/common/MediaItem$Builder;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/UriMediaItem$Builder;

    return-object p1
.end method
