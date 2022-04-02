.class public Lcom/appsgeyser/multiTabApp/configuration/UrlBarIcon;
.super Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;
.source "UrlBarIcon.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private icon:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->ICON:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarIcon;->setType(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    .line 11
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/configuration/UrlBarIcon;->icon:Ljava/lang/String;

    return-void
.end method
