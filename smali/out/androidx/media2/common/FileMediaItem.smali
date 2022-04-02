.class public Landroidx/media2/common/FileMediaItem;
.super Landroidx/media2/common/MediaItem;
.source "FileMediaItem.java"


# instance fields
.field mClosed:Z

.field mFDLength:J

.field mFDOffset:J

.field mPFD:Landroid/os/ParcelFileDescriptor;

.field mRefCount:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 73
    invoke-direct {p0}, Landroidx/media2/common/MediaItem;-><init>()V

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Landroidx/media2/common/FileMediaItem;->mFDOffset:J

    const-wide v0, 0x7ffffffffffffffL

    .line 62
    iput-wide v0, p0, Landroidx/media2/common/FileMediaItem;->mFDLength:J

    .line 65
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/common/FileMediaItem;->mRefCount:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public decreaseRefCount()V
    .registers 7

    .line 132
    iget-object v0, p0, Landroidx/media2/common/FileMediaItem;->mRefCount:Ljava/lang/Integer;

    monitor-enter v0

    .line 133
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/common/FileMediaItem;->mClosed:Z

    if-eqz v1, :cond_10

    const-string v1, "FileMediaItem"

    const-string v2, "ParcelFileDescriptorClient is already closed."

    .line 134
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    monitor-exit v0

    return-void

    .line 137
    :cond_10
    iget-object v1, p0, Landroidx/media2/common/FileMediaItem;->mRefCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/common/FileMediaItem;->mRefCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_51

    if-gtz v1, :cond_4f

    .line 139
    :try_start_24
    iget-object v1, p0, Landroidx/media2/common/FileMediaItem;->mPFD:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2d

    .line 140
    iget-object v1, p0, Landroidx/media2/common/FileMediaItem;->mPFD:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2d} :catch_32
    .catchall {:try_start_24 .. :try_end_2d} :catchall_30

    .line 145
    :cond_2d
    :goto_2d
    :try_start_2d
    iput-boolean v2, p0, Landroidx/media2/common/FileMediaItem;->mClosed:Z
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_51

    goto :goto_4f

    :catchall_30
    move-exception v1

    goto :goto_4c

    :catch_32
    move-exception v1

    :try_start_33
    const-string v3, "FileMediaItem"

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close the ParcelFileDescriptor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/media2/common/FileMediaItem;->mPFD:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_30

    goto :goto_2d

    .line 145
    :goto_4c
    :try_start_4c
    iput-boolean v2, p0, Landroidx/media2/common/FileMediaItem;->mClosed:Z

    throw v1

    .line 148
    :cond_4f
    :goto_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_51

    goto :goto_55

    :goto_54
    throw v1

    :goto_55
    goto :goto_54
.end method

.method public getFileDescriptorLength()J
    .registers 3

    .line 107
    iget-wide v0, p0, Landroidx/media2/common/FileMediaItem;->mFDLength:J

    return-wide v0
.end method

.method public getFileDescriptorOffset()J
    .registers 3

    .line 98
    iget-wide v0, p0, Landroidx/media2/common/FileMediaItem;->mFDOffset:J

    return-wide v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 89
    iget-object v0, p0, Landroidx/media2/common/FileMediaItem;->mPFD:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public increaseRefCount()V
    .registers 4

    .line 116
    iget-object v0, p0, Landroidx/media2/common/FileMediaItem;->mRefCount:Ljava/lang/Integer;

    monitor-enter v0

    .line 117
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/common/FileMediaItem;->mClosed:Z

    if-eqz v1, :cond_10

    const-string v1, "FileMediaItem"

    const-string v2, "ParcelFileDescriptorClient is already closed."

    .line 118
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    monitor-exit v0

    return-void

    .line 121
    :cond_10
    iget-object v1, p0, Landroidx/media2/common/FileMediaItem;->mRefCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/common/FileMediaItem;->mRefCount:Ljava/lang/Integer;

    .line 122
    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public isClosed()Z
    .registers 3

    .line 157
    iget-object v0, p0, Landroidx/media2/common/FileMediaItem;->mRefCount:Ljava/lang/Integer;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/common/FileMediaItem;->mClosed:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 159
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
