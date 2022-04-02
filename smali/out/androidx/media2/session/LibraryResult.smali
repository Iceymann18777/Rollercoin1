.class public Landroidx/media2/session/LibraryResult;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "LibraryResult.java"

# interfaces
.implements Landroidx/media2/session/RemoteResult;


# instance fields
.field mCompletionTime:J

.field mItem:Landroidx/media2/common/MediaItem;

.field mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field mItemListSlice:Landroidx/media2/common/ParcelImplListSlice;

.field mParams:Landroidx/media2/session/MediaLibraryService$LibraryParams;

.field mParcelableItem:Landroidx/media2/common/MediaItem;

.field mResultCode:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .registers 2

    .line 166
    iget v0, p0, Landroidx/media2/session/LibraryResult;->mResultCode:I

    return v0
.end method

.method public onPostParceling()V
    .registers 3

    .line 236
    iget-object v0, p0, Landroidx/media2/session/LibraryResult;->mParcelableItem:Landroidx/media2/common/MediaItem;

    iput-object v0, p0, Landroidx/media2/session/LibraryResult;->mItem:Landroidx/media2/common/MediaItem;

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Landroidx/media2/session/LibraryResult;->mParcelableItem:Landroidx/media2/common/MediaItem;

    .line 238
    iget-object v1, p0, Landroidx/media2/session/LibraryResult;->mItemListSlice:Landroidx/media2/common/ParcelImplListSlice;

    invoke-static {v1}, Landroidx/media2/session/MediaUtils;->convertParcelImplListSliceToMediaItemList(Landroidx/media2/common/ParcelImplListSlice;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/session/LibraryResult;->mItemList:Ljava/util/List;

    .line 239
    iput-object v0, p0, Landroidx/media2/session/LibraryResult;->mItemListSlice:Landroidx/media2/common/ParcelImplListSlice;

    return-void
.end method

.method public onPreParceling(Z)V
    .registers 2

    .line 226
    iget-object p1, p0, Landroidx/media2/session/LibraryResult;->mItem:Landroidx/media2/common/MediaItem;

    invoke-static {p1}, Landroidx/media2/session/MediaUtils;->upcastForPreparceling(Landroidx/media2/common/MediaItem;)Landroidx/media2/common/MediaItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/LibraryResult;->mParcelableItem:Landroidx/media2/common/MediaItem;

    .line 227
    iget-object p1, p0, Landroidx/media2/session/LibraryResult;->mItemList:Ljava/util/List;

    invoke-static {p1}, Landroidx/media2/session/MediaUtils;->convertMediaItemListToParcelImplListSlice(Ljava/util/List;)Landroidx/media2/common/ParcelImplListSlice;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/LibraryResult;->mItemListSlice:Landroidx/media2/common/ParcelImplListSlice;

    return-void
.end method
