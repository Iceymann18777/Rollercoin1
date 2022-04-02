.class public Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;
.super Ljava/lang/Object;
.source "RemoteSuggestionItem.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAutocompleteText()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;->text:Ljava/lang/String;

    return-object v0
.end method
