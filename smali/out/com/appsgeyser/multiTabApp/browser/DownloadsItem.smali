.class public Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;
.super Ljava/lang/Object;
.source "DownloadsItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;
    }
.end annotation


# instance fields
.field private date:Ljava/lang/Long;

.field private description:Ljava/lang/String;

.field private file_path:Ljava/lang/String;

.field private id_d:J

.field private link_d:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private progress:Ljava/lang/Integer;

.field private status:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->progress:Ljava/lang/Integer;

    .line 30
    sget-object v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->status:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->description:Ljava/lang/String;

    .line 32
    iput-wide p1, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->id_d:J

    .line 33
    iput-object p4, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->link_d:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->progress:Ljava/lang/Integer;

    .line 39
    sget-object v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->status:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->description:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/Long;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->date:Ljava/lang/Long;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFile_path()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->file_path:Ljava/lang/String;

    return-object v0
.end method

.method public getId_d()J
    .registers 3

    .line 73
    iget-wide v0, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->id_d:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()Ljava/lang/Integer;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->progress:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatus()Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->status:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    return-object v0
.end method

.method public setDate(Ljava/lang/Long;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->date:Ljava/lang/Long;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->description:Ljava/lang/String;

    return-void
.end method

.method public setFile_path(Ljava/lang/String;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->file_path:Ljava/lang/String;

    return-void
.end method

.method public setId_d(J)V
    .registers 3

    .line 77
    iput-wide p1, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->id_d:J

    return-void
.end method

.method public setLink_d(Ljava/lang/String;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->link_d:Ljava/lang/String;

    return-void
.end method

.method public setProgress(Ljava/lang/Integer;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->progress:Ljava/lang/Integer;

    return-void
.end method

.method public setStatus(Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->status:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    return-void
.end method
