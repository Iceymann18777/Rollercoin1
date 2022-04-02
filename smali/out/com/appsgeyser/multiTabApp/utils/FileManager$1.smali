.class final Lcom/appsgeyser/multiTabApp/utils/FileManager$1;
.super Ljava/util/ArrayList;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/utils/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "video/mpeg4"

    .line 37
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    const-string v0, "video/mp4"

    .line 38
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    const-string v0, "video/3gp"

    .line 39
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    const-string v0, "video/3gpp"

    .line 40
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    const-string v0, "video/3gpp2"

    .line 41
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    const-string v0, "video/webm"

    .line 42
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    const-string v0, "video/avi"

    .line 43
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    const-string v0, "application/sdp"

    .line 44
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    const-string v0, "application/vnd.apple.mpegurl"

    .line 45
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    const-string v0, "application/x-mpegurl"

    .line 46
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
