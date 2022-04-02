.class public Landroidx/media2/common/CallbackMediaItem;
.super Landroidx/media2/common/MediaItem;
.source "CallbackMediaItem.java"


# instance fields
.field mDataSourceCallback:Landroidx/media2/common/DataSourceCallback;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Landroidx/media2/common/MediaItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataSourceCallback()Landroidx/media2/common/DataSourceCallback;
    .registers 2

    .line 62
    iget-object v0, p0, Landroidx/media2/common/CallbackMediaItem;->mDataSourceCallback:Landroidx/media2/common/DataSourceCallback;

    return-object v0
.end method
