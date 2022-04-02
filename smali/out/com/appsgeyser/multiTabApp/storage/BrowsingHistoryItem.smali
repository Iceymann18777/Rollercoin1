.class public Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryItem;
.super Ljava/lang/Object;
.source "BrowsingHistoryItem.java"


# instance fields
.field private date:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryItem;->id:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryItem;->date:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryItem;->title:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryItem;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryItem;->url:Ljava/lang/String;

    return-object v0
.end method
