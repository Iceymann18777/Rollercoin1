.class public Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SuggestionsHandler.java"


# instance fields
.field private final CAPACITY_DEFAULT:I

.field private final XML_ATTRIBUTE_DATA:Ljava/lang/String;

.field private final XML_TAG_SUGGESTION:Ljava/lang/String;

.field private capacity:I

.field private results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x6

    .line 11
    iput v0, p0, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsHandler;->CAPACITY_DEFAULT:I

    const-string v1, "suggestion"

    .line 13
    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsHandler;->XML_TAG_SUGGESTION:Ljava/lang/String;

    const-string v1, "data"

    .line 14
    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsHandler;->XML_ATTRIBUTE_DATA:Ljava/lang/String;

    .line 16
    iput v0, p0, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsHandler;->capacity:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsHandler;->results:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 47
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    return-void
.end method

.method public getResult()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsHandler;->results:Ljava/util/ArrayList;

    return-object v0
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 34
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsHandler;->results:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p2, p0, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsHandler;->capacity:I

    if-lt p1, p2, :cond_e

    return-void

    :cond_e
    if-eqz p3, :cond_2c

    if-eqz p4, :cond_2c

    const-string p1, "suggestion"

    .line 39
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    const-string p1, "data"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 40
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsHandler;->results:Ljava/util/ArrayList;

    new-instance p3, Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;

    invoke-direct {p3, p1}, Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    return-void
.end method
