.class Lcom/appsgeyser/multiTabApp/DownloadsListActivity$2;
.super Ljava/lang/Object;
.source "DownloadsListActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/DownloadsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$2;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;)I
    .registers 6

    .line 287
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getStatus()Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    const/4 v2, -0x1

    if-ne v0, v1, :cond_28

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getStatus()Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    if-ne v0, v1, :cond_28

    .line 288
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getId_d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getId_d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    :goto_25
    mul-int/lit8 p1, p1, -0x1

    return p1

    .line 290
    :cond_28
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getStatus()Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    if-ne v0, v1, :cond_31

    return v2

    .line 292
    :cond_31
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getStatus()Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    if-ne v0, v1, :cond_3b

    const/4 p1, 0x1

    return p1

    .line 295
    :cond_3b
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getId_d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getId_d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    goto :goto_25
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 284
    check-cast p1, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    check-cast p2, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    invoke-virtual {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$2;->compare(Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;)I

    move-result p1

    return p1
.end method
