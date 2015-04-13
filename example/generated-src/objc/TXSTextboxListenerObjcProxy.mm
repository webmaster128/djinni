// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from example.djinni

#import "TXSTextboxListenerObjcProxy+Private.h"
#import "TXSItemList+Private.h"
#import "TXSTextboxListener.h"
#include <vector>

namespace djinni_generated {

TextboxListenerObjcProxy::TextboxListenerObjcProxy (id objcRef)
{
    assert([[objcRef class] conformsToProtocol:@protocol(TXSTextboxListener)]);
    this->objcRef = objcRef;
}

TextboxListenerObjcProxy::~TextboxListenerObjcProxy ()
{
    djinni::DbxObjcWrapperCache<TextboxListenerObjcProxy> & cache = djinni::DbxObjcWrapperCache<TextboxListenerObjcProxy>::getInstance();
    cache.remove(objcRef);
}

std::shared_ptr<::textsort::TextboxListener> TextboxListenerObjcProxy::textbox_listener_with_objc (id objcRef)
{
    djinni::DbxObjcWrapperCache<TextboxListenerObjcProxy> & cache = djinni::DbxObjcWrapperCache<TextboxListenerObjcProxy>::getInstance();
    return static_cast<std::shared_ptr<::textsort::TextboxListener>>(cache.get(objcRef));
}

void TextboxListenerObjcProxy::update (const ::textsort::ItemList & items)
{
    @autoreleasepool {
        TXSItemList *cpp_items = [[TXSItemList alloc] initWithCppItemList:items];
        [objcRef update:cpp_items];
    }
}

}  // namespace djinni_generated
