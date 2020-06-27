.class public interface abstract annotation Lorg/intellij/lang/annotations/PrintFormat;
.super Ljava/lang/Object;
.source "PrintFormat.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Lorg/intellij/lang/annotations/Pattern;
    value = "(?:[^%]|%%|(?:%(?:\\d+\\$)?(?:[-#+ 0,(<]*)?(?:\\d+)?(?:\\.\\d+)?(?:[tT])?(?:[a-zA-Z%])))*"
.end annotation
