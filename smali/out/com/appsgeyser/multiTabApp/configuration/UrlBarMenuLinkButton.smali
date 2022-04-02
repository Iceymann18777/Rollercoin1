.class public Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;
.super Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;
.source "UrlBarMenuLinkButton.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 17
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->LINK:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {p0, v0}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;-><init>(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    .line 18
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;->title:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;->url:Ljava/lang/String;

    return-object v0
.end method
