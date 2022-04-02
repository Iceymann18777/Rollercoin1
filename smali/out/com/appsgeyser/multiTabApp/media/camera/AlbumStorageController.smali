.class public Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;
.super Ljava/lang/Object;
.source "AlbumStorageController.java"


# instance fields
.field private _albumName:Ljava/lang/String;

.field private _albumStorageDirFactory:Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageDirFactory;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;->_albumStorageDirFactory:Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageDirFactory;

    if-eqz p1, :cond_11

    const-string v0, ""

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2d

    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "album_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2d
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;->_albumName:Ljava/lang/String;

    return-void
.end method
